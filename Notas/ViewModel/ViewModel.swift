//
//  ViewModel.swift
//  Notas
//
//  Created by Hazel Alain on 19/12/23.
//

import Foundation
import CoreData
import SwiftUI


class ViewModel : ObservableObject {
    
    @Published var nota = ""
    @Published var fecha = Date()
    @Published var show = false
    
    //Core data
    
    func saveData(context: NSManagedObjectContext){
        let newNota = Notas(context: context)
        newNota.nota = nota
        newNota.fecha = fecha
        
        do {
            try context.save()
            print("Guardado con exito")
            show.toggle()
        } catch let error as NSError {
            //alerta
            print("Hubo un error", error.localizedDescription)

        }
        
    }
    

    
}
