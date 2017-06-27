//
//  SwitchViewController.swift
//  Chap11_protocolSample
//
//  Created by kwon on 21/06/2017.
//  Copyright © 2017 kwon. All rights reserved.
//

import UIKit

protocol switchCtrDelegate {
    func didImageSwitching(controller: SwitchViewController, img: UIImage, scOn: Bool)
}

class SwitchViewController: UIViewController {
    
    var switchOnOff: Bool = true
    var delegate: switchCtrDelegate!
    

    
    @IBOutlet weak var switchOn: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchOn.isOn = switchOnOff

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnPre(_ sender: UIBarButtonItem) {
        
        if(switchOn.isOn == true){
            delegate?.didImageSwitching(controller: self, img: UIImage(named: "lamp_on.png")!, scOn: true)
        }else{
            delegate?.didImageSwitching(controller: self, img: UIImage(named: "lamp_off.png")!, scOn: false)
        }
        
        
        navigationController?.popViewController(animated: false)
    }

    @IBAction func switchOn(_ sender: UISwitch) {
        
        if(sender.isOn == true){
            delegate?.didImageSwitching(controller: self, img: UIImage(named: "lamp_on.png")!, scOn: true)
        }else{
            delegate?.didImageSwitching(controller: self, img: UIImage(named: "lamp_off.png")!, scOn: false)
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
