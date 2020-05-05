//
//  FogueiraModel.swift
//  MentalCampfire
//
//  Created by Patricia Sampaio on 03/05/20.
//  Copyright © 2020 Rodrigo Silva Ribeiro. All rights reserved.
//

import Foundation

struct PhraseModel {
    
    
    var dayPhrase = ["\"A beleza começa no momento que você começa a ser você mesmo.\"",
                     "\"Queda após queda, desafio após desafio eu me fortaleço e me torno mais resiliente.\"\n[Coco Chanel]",
                     "\"A maior glória em viver não está em jamais cair, mas em nos levantar cada vez que caímos.\"\n[Nelson Mandela]",
                     "\"A resiliência e o bom humor são duas ótimas maneiras de levar a vida. Seja flexível, sorria e espalhe amor!\"",
                     "\"Calma, respira e continua com fé que essa resiliência acabará por dar frutos!\"",
                     "\"Se faltar ânimo, não desista. Olhe para o céu e encontre as forças que precisa.\"",
                     "\"Perante as tribulações mantenha a fé, resista, e um dia verá sua persistência ser recompensada com a vitória!\"",
                     "\"Nem todas as tempestades vêm para atrapalhar a sua vida. Algumas vêm para limpar o seu caminho.\"",
                     "\"Seja resiliente, acredite na sua força, no seu potencial, creia que é capaz e você será!\"",
                     "\"No mar da vida a minha âncora é a minha fé!\"\n[Yla Fernandes]",
                     "\"Não importa que você perca as batalhas, o que importa é como você cura suas feridas de guerra.\"",
                     "\"Quando se machucar, lembre-se que ninguém alcança o sucesso sem carregar algumas cicatrizes.\""
               ]
   
    
    var acess = Int.random(in: 0...11)
    func getPhrase () -> String {
        return dayPhrase[acess]
    }
        
}
