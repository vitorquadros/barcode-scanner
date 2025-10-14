//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by Vitor Quadros on 13/10/25.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {}
    
    final class Coordinator: NSObject, ScannerVCDelegate {
        func didFind(barcode: String) {
            print(barcode)
        }
        
        func didSurface(error: CameraError) {
            print(error.rawValue)
        }
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
}

#Preview {
    ScannerView()
}
