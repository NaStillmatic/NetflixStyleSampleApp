//
//  ContentView.swift
//  NetflixStyleSampleApp
//
//  Created by HwangByungJo  on 2022/06/23.
//

import SwiftUI

struct ContentView: View {
  
  let titles = ["Neflix Sample App"]
  
    var body: some View {
      NavigationView {
        List (titles, id: \.self) {
          let netFlicVC = HomeViewControllerPepresentable()
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.all)
          NavigationLink($0, destination: netFlicVC)
        }
        .navigationTitle("SwiftUI to UIKit")
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
