//
//  ContentView.swift
//  POCStringCatalog
//
//  Created by Herve Peroteau on 05/08/2023.
//

import SwiftUI

struct ContentView: View {
   @State var count = 0
   
   var body: some View {
      VStack {
         
         Text(verbatim:
               String(format: String(
                  localized: "map_package_downloader_stop_downloading"), "\(count)"
               )
         )
         
         Text("map_package_downloader_stop_downloading")
         
         // Take care of .environment(\.locale
         Text("Counter value: \(count) errors")

         // BUT Doesn't take care of .environment(\.locale
         Text(String(localized: "Counter value: \(count) errors"))
          
         Button("Increment") {
            count += 1
         }
         
         Button("Reset") {
            count = 0
         }
         
      }
      .padding()
   }
}

#Preview("fr") {
   ContentView()
      .environment(\.locale, .init(identifier: "fr"))
   
}

#Preview("es") {
   ContentView()
      .environment(\.locale, .init(identifier: "es"))
   
}
