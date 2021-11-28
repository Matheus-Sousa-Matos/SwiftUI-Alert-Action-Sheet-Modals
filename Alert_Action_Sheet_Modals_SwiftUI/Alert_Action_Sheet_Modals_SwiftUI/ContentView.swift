//
//  ContentView.swift
//  Alert_Action_Sheet_Modals_SwiftUI
//
//  Created by Matheus de Sousa Matos on 26/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var showModalView = false
    @State var showActionSheet = false
    
    var actionSheet: ActionSheet{
        ActionSheet(title: Text(""), message: Text(""), buttons: [
            .default(Text("Ligar para XX XXXX-XXXX")),
            .default(Text("Adicionar aos contatos")),
            .cancel()
            
        ])
    }
    
    var body: some View {
        VStack{
            Button("Show Modal"){
                self.showModalView.toggle()
            }
            Button("Action Sheet"){
                self.showActionSheet.toggle()
            }
        }
        .actionSheet(isPresented: $showActionSheet, content: {self.actionSheet})
        .sheet(isPresented: $showModalView, content: {ModalView()})
    }
}

struct ModalView: View {
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            Text("Hello, world!")
        }
       
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
