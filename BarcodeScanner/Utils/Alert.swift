//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Vitor Quadros on 14/10/25.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: Text("Invalid device input"),
                                              message: Text("Something is wrong with the camera. We are unable to capture the input."),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidScannedType = AlertItem(title: Text("Invalid scan type"),
                                              message: Text("The value scanned is invalid. This app scans EAN-8 and EAN-13 barcodes."),
                                              dismissButton: .default(Text("OK")))
}
