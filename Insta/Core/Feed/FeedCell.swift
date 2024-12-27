//
//  FeedCell.swift
//  Insta
//
//  Created by Zhuravlev Dmitry on 27.12.2024.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            // image + username
            HStack {
                Image("spider")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())

                Text("Username")
                    .font(.footnote)
                    .fontWeight(.semibold)

                Spacer()
            }
            .padding(.leading, 8)

            //post image

            Image("spider")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())


            // action buttons
            HStack(spacing: 16) {
                Button {
                    print("Like")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }


                Button {
                    print("Comment")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }

                Button {
                    print("Share")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                Spacer()

            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)


            // linkes label

            Text("15 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)

            // caption label

            HStack {
                Text("spider").fontWeight(.semibold) +
                Text("This is amazing test is caption")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)

            Text("6h ago ")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    FeedCell()
}
