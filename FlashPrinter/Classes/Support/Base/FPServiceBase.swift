//
//  FPServiceBase.swift
//  flashprint
//
//  Created by yulong mei on 2021/2/26.
//

import Foundation
import CoreBluetooth

class FPServiceBase: NSObject, FPPrintProtocol, FPServiceProtocol {
    
    func fpScan() {}
    
    func fpStopScan() {}
    
    func fpDiscover(_ peripheral: CBPeripheral) {}
    
    func fpConnect(_ peripheral: CBPeripheral) {}
    
    func fpDisconnect() {}
    
    func fpWillPrint() {}
    
    func fpPrint(_ data: Any) {}
    
    func fpStopPrintJob() {}
    
    func start() {}
    
    func stop() {}
    
    typealias FPPrintHandler = (FPPrinterStatus) -> Void
    var printHandler: FPPrintHandler?
    
    /// 连接的设备
    public var connectedPeripheral: CBPeripheral?
    
    /// 是否连接
    public var isConnected: Bool{
        get {
            return connectedPeripheral != nil
        }
    }
    
    /// 监听打印状态
    public var printerStatusMonitor: ((FPPrinterStatus) -> Void)?
        
    
}

/// 打印机的状态
public enum FPPrinterStatus: String {
    
    /// 已准备好
    case PRINTER_READY = "0"
    
    /// 打印中
    case PRINTER_PRINTING = "1"
    
    /// 缺纸
    case PRINTER_NO_PAPER = "4"
    
    /// 开盖
    case PRINTER_OPENED = "6"
    
    /// 低电量
    case PRINTER_LOW_BATTERY = "8"
    
    /// 过热
    case PRINTER_OVERHEAT = "16"
    
    /// 获取了MAC
    case PRINTER_PRINT_MAC = "MAC"
    
    /// 数据已发送给打印机
    case PRINTER_PRINT_OK = "OK"
    
    /// stopPrintJob() 停止打印工作
    case PRINTER_PRINT_END = "END"
    
    case PRINTER_PRINT_STOP = "STOP"
    
    /// 厂商不支持Flash, 版本错误
    case PRINTER_PRINT_VERSION_ERROR = "VERSION_ERROR"
    
    /// 未知错误
    case PRINTER_PRINT_UNKNOW = "UNKNOW"
    
    /// 打印机回传数据有问题
    case PRINTER_PRINT_NIL = ""
    
    /// 错误
    case PRINTER_ERROR = "ERROR"
    
    /// 连接错误
    case PRINTER_CONNECT_FAILD = "CONNECT_FAILD"
    
    /// 开启蓝牙服务失败
    case PRINTER_GATTSERVICE_FAILD = "GATTSERVICE_FAILD"
    
    var error: String {
        switch self {
        case .PRINTER_PRINTING:
            return NSLocalizedString("translate.8g", comment: "正在打印...")
        case .PRINTER_OPENED:
            return NSLocalizedString("translate.8m", comment: "设备开盖")
        case .PRINTER_NO_PAPER:
            return NSLocalizedString("translate.8k", comment: "缺纸")
        case .PRINTER_LOW_BATTERY:
            return NSLocalizedString("translate.8j", comment: "低电量")
        case .PRINTER_OVERHEAT:
            return NSLocalizedString("translate.8l", comment: "过热")
        case .PRINTER_PRINT_UNKNOW:
            return NSLocalizedString("translate.8i", comment: "未知错误")
        case .PRINTER_PRINT_NIL:
            return "接收数据处理出错"
        case .PRINTER_PRINT_VERSION_ERROR:
            return NSLocalizedString("translate.30h", comment: "你的厂商不支持Flash，请联系你的打印机厂商解决")
        case .PRINTER_GATTSERVICE_FAILD:
            return "开启蓝牙服务失败，请联系客服"
        default:
            return ""
        }
    }
}
