//
//  ViewController.swift
//  FlashPrinter
//
//  Created by longjiao914@126.com on 03/12/2021.
//  Copyright (c) 2021 longjiao914@126.com. All rights reserved.
//

import UIKit
import FlashPrinter
import MYL_Jewelry
import MBProgressHUD

class ViewController: UIViewController {
    
    var printArray: [PrintTestModel] = []
    
    var printTicketArray: [PrintTestModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.setData()
    }
    
    private func setData() {
        for _ in 1...10 {
            let model = PrintTestModel()
            printArray.append(model)
        }
        
        let data = FDTicketLabelData()
        data.src_name = "寄件人姓名"
        data.src_phone = "142352365467"
        data.src_abbreviation = "THH"
        data.src_detail_address = "北京朝阳区奥运村街道北辰新纪元2-2402"
        data.src_district_name = "区"
        data.src_city_name = "市"
        data.src_province_name = "省"
        data.src_postal_code = "123456"
        
        data.dst_name = "收件人姓名"
        data.dst_phone = "142352365467"
        data.dst_abbreviation = "THH"
        data.dst_detail_address = "北京朝阳区奥运村街道北辰新纪元2-2402"
        data.dst_district_name = "区"
        data.dst_city_name = "市"
        data.dst_province_name = "省"
        data.dst_postal_code = "123456"
        
        data.cod_amount = 999
        data.cod_enabled = 1
        
        data.meow_pno = "Th9999999"
        data.remark = "北京朝阳区奥运村街道北辰新纪元"
        
        let model = PrintTestModel()
        model.data = data
        self.printTicketArray.append(model)
        
        let data1 = FDTicketLabelData()
        data1.src_name = "菲律宾 Paálam"
        data1.src_phone = "123423456347"
        data1.src_abbreviation = "THH"
        data1.src_detail_address = "Beichen New Era 2-2402, Olympic Village Street, Chaoyang District, Beijing"
        data1.src_district_name = "Tagal na ah!"
        data1.src_city_name = " Long time no see!"
        data1.src_province_name = "Paálam"
        data1.src_postal_code = "1006"
        
        data1.dst_name = "Paálam"
        data1.dst_phone = "Paálam"
        data1.dst_abbreviation = "THH"
        data1.dst_detail_address = "Pwede mo bang bagalan "
        data1.dst_district_name = "Tagal na"
        data1.dst_city_name = "Nagsasalita"
        data1.dst_province_name = "kaunti lamang"
        data1.dst_postal_code = "Nagsasalita"
        
        data1.cod_amount = 999
        data1.cod_enabled = 1
        
        data1.meow_pno = "Th9999999"
        data1.remark = "Pwede mo bang bagalan ang iyong pagsasalita?"
        let model1 = PrintTestModel()
        model1.data = data1
        self.printTicketArray.append(model1)
        
        let data2 = FDTicketLabelData()
        data2.src_name = "老挝 ຕອນບ່າຍ"
        data2.src_phone = "123423456347"
        data2.src_abbreviation = "THH"
        data2.src_detail_address = "Beichen New Era 2-2402, ຖະ ໜົນ ບ້ານໂອລິມປິກ, ເມືອງ Chaoyang, ປັກກິ່ງ"
        data2.src_district_name = "ຕອນບ່າຍ"
        data2.src_city_name = "ຕອນບ່າຍ"
        data2.src_province_name = "ຕອນບ່າຍ"
        data2.src_postal_code = "ຕອນບ່າຍ"
        
        data2.dst_name = "ຕອນບ່າຍ"
        data2.dst_phone = "ຕອນບ່າຍ"
        data2.dst_abbreviation = "THH"
        data2.dst_detail_address = "Beichen New Era 2-2402, ຖະ ໜົນ ບ້ານໂອລິມປິກ, ເມືອງ Chaoyang, ປັກກິ່ງ "
        data2.dst_district_name = "ຕອນບ່າຍ"
        data2.dst_city_name = "ຕອນບ່າຍ"
        data2.dst_province_name = "ຕອນບ່າຍ"
        data2.dst_postal_code = "ສະບາຍດີ"
        
        data2.cod_amount = 999
        data2.cod_enabled = 1
        
        data2.meow_pno = "Th9999999"
        data2.remark = "ສະບາຍດີຕອນເຊົ້າ (ຕອນບ່າຍ, ຕອນບ່າຍ, ຕອນແລງ)"
        let model2 = PrintTestModel()
        model2.data = data2
        self.printTicketArray.append(model2)
        
        let data3 = FDTicketLabelData()
        data3.src_name = "马来语 பீச்சென்"
        data3.src_phone = "123423456347"
        data3.src_abbreviation = "THH"
        data3.src_detail_address = "பீச்சென் புதிய சகாப்தம் 2-2402, ஒலிம்பிக் கிராமத் தெரு, சாயாங் மாவட்டம், பெய்ஜிங்"
        data3.src_district_name = "சகாப்தம்"
        data3.src_city_name = "சகாப்தம்"
        data3.src_province_name = "சகாப்தம்"
        data3.src_postal_code = "56788"
        
        data3.dst_name = "சகாப்தம்"
        data3.dst_phone = "சகாப்தம்"
        data3.dst_abbreviation = "THH"
        data3.dst_detail_address = "பீச்சென் புதிய சகாப்தம் 2-2402, ஒலிம்பிக் கிராமத் தெரு, சாயாங் மாவட்டம், பெய்ஜிங் "
        data3.dst_district_name = "பீச்சென்"
        data3.dst_city_name = "பீச்சென்"
        data3.dst_province_name = "பீச்சென்"
        data3.dst_postal_code = "99999"
        
        data3.cod_amount = 999
        data3.cod_enabled = 1
        
        data3.meow_pno = "Th9999999"
        data3.remark = "பீச்சென் புதிய சகாப்தம் 2-2402, ஒலிம்பிக் கிராமத் தெரு, சாயாங் மாவட்டம், பெய்ஜிங் "
        let model3 = PrintTestModel()
        model3.data = data3
        self.printTicketArray.append(model3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func printImage(_ sender: Any) {
        FPPrintManager.shared.start()
        self.checkData()
    }
    
    @IBAction func printTicket(_ sender: Any) {
        FPPrintManager.shared.start()
        self.checkTicketData()
    }
    
    private func checkTicketData() {
        let total = printTicketArray.count
        for (index,model) in printTicketArray.enumerated() {
            if !model.status {
                let image = FlashDrawManager.drawPNOLabel(data: model.data!, 20)
                self.printTicketData(model: model, image: image, index: index, total: total)
                return
            }
        }
    }
    
    private func checkData() {
        let total = printArray.count
        for (index,model) in printArray.enumerated() {
            if !model.status {
                self.printData(model: model, image: UIImage.fp_make(name: "print")!, index: index, total: total)
                return
            }
        }
    }
    
    private func printTicketData(model: PrintTestModel, image: UIImage, index: Int, total: Int) {
        
        FPPrintManager.shared.print(image: image, index: index + 1, total: total) { [weak self](status) in
            guard let self = self else { return }
            debugPrint("FPPrintManager.shared.print Status Monitor: ---", status)
            switch status {
            case .PRINTER_PRINT_OK:
                model.status = true
                self.printTicketArray[index] = model
            case .PRINTER_PRINT_END:
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                    self.checkTicketData()
                }
            case .PRINTER_PRINT_STOP:
                let hud = MBProgressHUD.showAdded(to: self.view, animated: true)
                hud.detailsLabel.text = "Print 结束!"
                hud.mode = .text
                hud.hide(animated: true, afterDelay: 1.5)
            default:
                break
            }
        }
    }
    
    private func printData(model: PrintTestModel, image: UIImage, index: Int, total: Int) {
        
        FPPrintManager.shared.print(image: image, index: index + 1, total: total) { [weak self](status) in
            guard let self = self else { return }
            debugPrint("FPPrintManager.shared.print Status Monitor: ---", status)
            switch status {
            case .PRINTER_PRINT_OK:
                model.status = true
                self.printArray[index] = model
            case .PRINTER_PRINT_END:
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    if index + 1 == total {
                        let hud = MBProgressHUD.showAdded(to: self.view, animated: true)
                        hud.detailsLabel.text = "Print 结束!"
                        hud.mode = .text
                        hud.hide(animated: true, afterDelay: 1.5)
                    }else {
                        self.checkData()
                    }
                }
            case .PRINTER_PRINT_STOP:
                let hud = MBProgressHUD.showAdded(to: self.view, animated: true)
                hud.detailsLabel.text = "Print 结束!"
                hud.mode = .text
                hud.hide(animated: true, afterDelay: 1.5)
            case .PRINTRT_DISCONNECT:
                let hud = MBProgressHUD.showAdded(to: self.view, animated: true)
                hud.detailsLabel.text = status.error
                hud.mode = .text
                hud.hide(animated: true, afterDelay: 1.5)
            default:
                break
            }
        }
    }
    
    class PrintTestModel {
        var status: Bool = false
        var image: UIImage?
        var data: FDTicketLabelData?
    }
}

