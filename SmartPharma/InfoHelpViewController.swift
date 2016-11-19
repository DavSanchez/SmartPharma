//
//  InfoHelpViewController.swift
//  SmartPharma
//
//  Created by David on 14/11/2016.
//  Copyright © 2016 David. All rights reserved.
//

import UIKit

class InfoHelpViewController: UIViewController {
    
    @IBOutlet weak var textoInfoHelp: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // Visualizar archivo de texto enriquecido RTF que va a
        // contener la ayuda e información adicional de la app.
        let rtfPath = NSBundle.mainBundle().URLForResource("InfoHelp", withExtension: "rtf")!
        var d : NSDictionary? = nil
        let attributedStringWithRtf = try! NSAttributedString(
            URL: rtfPath,
            options: [NSDocumentTypeDocumentAttribute : NSRTFTextDocumentType],
            documentAttributes: &d)
        self.textoInfoHelp.attributedText = attributedStringWithRtf
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
