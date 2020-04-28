//
//  Tip.swift
//  MentalCampfire
//
//  Created by Rodrigo Silva Ribeiro on 28/04/20.
//  Copyright © 2020 Rodrigo Silva Ribeiro. All rights reserved.
//

import Foundation

struct Tip {
    var Title: String
    var Text: String
    
    static func createTip(_ val:Int) -> Tip {
        switch val {
        case 1:
            return Tip(Title: "Tente por apenas 2 minutos", Text: "Comece com apenas 2 minutos durante uma semana. Vá aumentando dois minutos gradativamente. Ao aumentar apenas um pouco por vez, você estará meditando 10 minutos por dia, o que é incrível!")
        case 2:
            return Tip(Title: "Não se prenda, apenas faça.", Text: "Não se preocupe em onde ou como sentar, isso não é importante para começar. Comece apenas sentando em um local confortável. Pode ser um sofá, cama ou no chão. Sente e   só por dois minutos no início, faça.")
        case 3:
            return Tip(Title: "Desenvolva uma atitude afetuosa", Text: "Quando você perceber pensamentos e sentimentos surgindo durante a meditação, olhe para eles com uma atitude amigável, não intrusos ou inimigos. Eles são parte de você. Seja amigável e não rude.")
        case 0:
            return Tip(Title: "Yoda about dark side", Text: "Fear is the path to the dark side. Fear leads to anger. Anger leads to hate. Hate leads to suffering.")
        default:
             return Tip(Title: "Yoda about dark side", Text: "Fear is the path to the dark side. Fear leads to anger. Anger leads to hate. Hate leads to suffering.")
        }
        
        
    }
    
}
