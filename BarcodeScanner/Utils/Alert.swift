//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Vitor Quadros on 14/10/25.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid device input",
                                              message: "Something is wrong with the camera. We are unable to capture the input.",
                                              dismissButton: .default(Text("OK")))
    
    static let invalidScannedType = AlertItem(title: "Invalid scan type",
                                              message: "The value scanned is invalid. This app scans EAN-8 and EAN-13 barcodes.",
                                              dismissButton: .default(Text("OK")))
}
