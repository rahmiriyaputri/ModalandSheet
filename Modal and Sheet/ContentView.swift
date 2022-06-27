//
//  ContentView.swift
//  Modal and Sheet
//
//  Created by Rahmi Riya Putri on 23/06/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    @State private var showActionSheet = false
    @State private var showSheet = false
    @State private var showPopover = false
    @State private var myColor = ""
    
    var body: some View {
        VStack{
            Text(myColor)
            Button("Show Alert"){
                showAlert.toggle()
            }.alert("Are sure you want to delete?", isPresented: $showAlert) {
                Button("Cancel", role: .cancel) {
                    
                }
                Button("Delete", role: .destructive){
                    
                }
            }
            Button("Show Action Sheet"){
                showActionSheet.toggle()
            }.confirmationDialog("Choose Color", isPresented: $showActionSheet){
                Button("Red"){
                    myColor = "Red"
                    
                }
                Button("Blue"){
                    myColor = "Blue"
                }
                Button("Yellow"){
                    myColor = "Yellow"
                }
            }
            Button("Show Sheet"){
                showSheet.toggle()
            }.sheet(isPresented: $showSheet) {
                SheetSwiftUIView()
            }
            Button("Show Popover"){
                showPopover.toggle()
            }.popover(isPresented: $showPopover) {
                Text("This is popover")
                Button("Red"){
                    myColor = "Red"
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
