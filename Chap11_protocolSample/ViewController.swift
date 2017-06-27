//
//  ViewController.swift
//  Chap11_protocolSample
//
//  Created by kwon on 21/06/2017.
//  Copyright © 2017 kwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, switchCtrDelegate{

    @IBOutlet weak var imgView: UIImageView!
    
    var swtichOnOff: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imgView.image = UIImage(named: "lamp_on.png")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //세그웨이 객체 생성
        
        let switchCtr = segue.destination as! SwitchViewController
        
        if(segue.identifier == "goSwitchBar"){
            
            switchCtr.switchOnOff = swtichOnOff
            
            switchCtr.delegate = self
            
            
        }
    }
    
    func didImageSwitching(controller: SwitchViewController, img: UIImage, scOn: Bool){
        imgView.image = img
        
        swtichOnOff = scOn
        //swtichOnOff = switchOn
    }


}

