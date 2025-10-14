//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Vitor Quadros on 14/10/25.
//

import SwiftUI
import Combine

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not yet scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
