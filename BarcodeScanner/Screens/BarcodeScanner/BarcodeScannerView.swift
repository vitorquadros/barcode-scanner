//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Vitor Quadros on 13/10/25.
//

import SwiftUI

struct BarcodeScannerView: View {
    @StateObject var vm = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                ScannerView(scannedCode: $vm.scannedCode, alertItem: $vm.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer()
                    .frame(height: 60)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(vm.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(vm.statusTextColor)
                    .padding()
                
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $vm.alertItem) { alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: alertItem.dismissButton)
            }
            
        }
    }
}

#Preview {
    BarcodeScannerView()
}
