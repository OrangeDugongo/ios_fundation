//
//  Add.swift
//  core data
//
//  Created by mignoneraffaele on 02/10/2018.
//  Copyright © 2018 The Melons Salad. All rights reserved.
//

import UIKit

class Add: UIViewController {
    
    @IBOutlet var field: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func onSaveClick(_ sender: UIBarButtonItem) {
        if let appDelegate = (UIApplication.shared.delegate as? AppDelegate) {
            let context = appDelegate.persistentContainer.viewContext
            
            let utente = UserMO(context: context)
            
            utente.nome = field.text
            utente.cognome = "non so"
            appDelegate.saveContext()
            
        }
        navigationController?.popViewController(animated: true)
    }

}
