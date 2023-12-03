//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by JOY JAIN on 03/12/23.
//

import SwiftUI



struct ProminentTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func prominentTitleStyle() -> some View {
        self.modifier(ProminentTitle())
    }
}

struct ContentView: View {

    var body: some View {
        VStack {
            Text("Hello, world!")
                .prominentTitleStyle()
        }
        .foregroundColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
