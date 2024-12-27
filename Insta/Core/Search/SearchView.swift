//
//  SearchView.swift
//  Insta
//
//  Created by Zhuravlev Dmitry on 27.12.2024.
//

import SwiftUI

struct SearchView: View {

    @State private var searchText: String = ""

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(0...15, id: \.self) { user in
                        HStack {
                            Image("spider")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading) {
                                Text("name")
                                    .fontWeight(.semibold)
                                
                                Text("name")
                            }
                            .font(.footnote)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
