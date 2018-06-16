//
//  AddEditViewController.swift
//  ListaDeCompras
//
//  Created by João Alves on 15/06/2018.
//  Copyright © 2018 JoaoAlves. All rights reserved.
//

import UIKit

class AddEditViewController: UIViewController {
    
    var lista: Lista!
    
    @IBOutlet weak var tfNome: UITextField!
    @IBOutlet weak var tfPreco: UITextField!
    @IBOutlet weak var tfQtd: UITextField!
    //@IBOutlet weak var tfDescricao: UITextField!
    @IBOutlet weak var tfDescricao: UITextField!
    @IBOutlet weak var btAddEdit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if lista != nil{
            title = "editar"
            btAddEdit.setTitle("Alterar", for: .normal)
            tfNome.text = lista.nome
            tfPreco.text = lista.preco
            tfQtd.text = lista.quantidade
            tfDescricao.text = lista.descricao
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func AddEditItem(_ sender: UIButton) {
        if lista == nil{
            lista = Lista(context: context)
        }
        lista.nome = tfNome.text
        lista.preco = tfPreco.text
        lista.quantidade = tfQtd.text
        lista.descricao = tfDescricao.text
        
        do{
            try context.save()
        }catch{
            print(error.localizedDescription)
        }
        navigationController?.popViewController(animated: true)
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
