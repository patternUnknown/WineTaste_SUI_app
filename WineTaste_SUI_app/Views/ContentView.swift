//
//  ContentView.swift
//  WineTaste_SUI_app
//
//  Created by DDDD on 16/11/2020.
//

import SwiftUI

struct ContentView: View {
    @State var library = Library()
    var body: some View {

        NavigationView {
            //        NavigationView {
            List(library.sortedWines, id: \.self) { wineCatalogue in
                ListRow(wineCatalogue: wineCatalogue,
                        image: $library.uiImages[wineCatalogue])
            }
            .navigationBarTitle("My Wine Collection")
            //    }
        }
    }
    
}

struct ListRow: View {
    let wineCatalogue: WineBotttle
    @Binding var image: UIImage?
    
    
    var body: some View {
        NavigationLink(
            destination: DetailView(wineCatalogue: wineCatalogue, image: $image)
        ) {
            HStack {
                WineBotttle.Image(title: wineCatalogue.name, size: 80) //see ListViews for the view
                TitleAndBrandStack(
                    wineCatalogue: wineCatalogue,
                    titleFont: .title2,
                    brandFont: .title3
                ) //scrollable
                .lineLimit(1)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

