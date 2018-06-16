//
//  ListaTableViewCell.swift
//  ListaDeCompras
//
//  Created by João Alves on 15/06/2018.
//  Copyright © 2018 JoaoAlves. All rights reserved.
//

import UIKit

class ListaTableViewCell: UITableViewCell {

    @IBOutlet weak var lbtitulo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func prepare(with lista: Lista){
        lbtitulo.text = lista.nome ?? ""
    }

}
