//
//  ContentView.swift
//  POCStringCatalog
//
//  Created by Herve Peroteau on 05/08/2023.
//

import SwiftUI

public extension String {
    
    func localized(locale: Locale) -> String {
        let resource = LocalizedStringResource(LocalizationValue(self), locale: locale)
        return String(localized: resource)
//        String(LocalizationValue(self, locale: locale), locale: locale)
//        String(localized: LocalizationValue(self), locale: locale)
    }
}

struct ContentView: View {
   @State var count = 0
    
   var body: some View {
       
       let _ = print(String(localized: "Counter value: \(count) errors"))
       
       let _ = print(String(localized: "my_key_for_param", defaultValue: "My default"))
       
      VStack {
          
//          Text(String(format: "my_key_for_param".localized(locale: Locale(identifier: "fr")), count))

          Text("my_key_for_param \(count)")

          
//          Text(
//          String(localized: "settings_item_map_display_traffic_flow", defaultValue: "My default")
//          )
          
//         Text(
//               String(format: String(
//                  localized: "routing_error"), "\(count)"
//               )
//         )
//
//          
//         Text("map_package_downloader_stop_downloading")
//         
//         // Take care of .environment(\.locale
//         Text("Counter value: \(count) errors")
//
//         // BUT Doesn't take care of .environment(\.locale
//         Text(String(localized: "Counter value: \(count) errors"))
          
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
