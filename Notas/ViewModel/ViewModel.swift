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
    
}
