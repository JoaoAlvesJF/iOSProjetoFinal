//
//  ListaViewController.swift
//  ListaDeCompras
//
//  Created by João Alves on 15/06/2018.
//  Copyright © 2018 JoaoAlves. All rights reserved.
//

import UIKit

class ListaViewController: UIViewController {

    var lista: Lista!
    
    @IBOutlet weak var lbNome: UILabel!
    @IBOutlet weak var lbPreco: UILabel!
    @IBOutlet weak var lbQtd: UILabel!
    @IBOutlet weak var lbDescricao: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        lbNome.text = lista.nome
        lbPreco.text = lista.preco
        lbQtd.text = lista.quantidade
        lbDescricao.text = lista.descricao
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AddEditViewController
        vc.lista = lista
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
