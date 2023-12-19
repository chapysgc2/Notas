//
//  addView.swift
//  Notas
//
//  Created by Hazel Alain on 19/12/23.
//

import SwiftUI

struct addView: View {
    @ObservedObject var model : ViewModel
    var body: some View {
        
        VStack {
            
            Text("Agregar Nota")
                .font(.largeTitle)
                .bold()
            Spacer()
            TextEditor(text: $model.nota)
            Divider()
            DatePicker("Seleccionar fecha",selection: $model.fecha)
            Spacer()
            
            Button(action:{
                
            }){
                Label(
                    
                    title : {
                        Text("Guardar")
                            .foregroundColor(.white)
                            .bold()
                    },
                    icon : { 
                        Image(systemName : "plus")
                            .foregroundColor(.white)
                    }

                )
            }
                .padding()
                .frame(width: UIScreen.main.bounds.width - 30)
                .background(Color.blue)
                .cornerRadius(8)
            
            
        }.padding()
    }
}
