//
//  CatListRow.swift
//  SwiftUIListViewDemoApp
//
//  Created by ryota on 2023/01/03.
//

import SwiftUI

struct CatListRow: View {
    var catData :Cats
    var body: some View {
        HStack {
            Image(catData.image)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading, spacing: 5, content: {
                            Text(catData.name)
                            Text(catData.birth)
                                .font(.caption)
                                .foregroundColor(.gray)
                        })
                        Spacer()
        }
    }
}

struct CatListRow_Previews: PreviewProvider {
    static var previews: some View {
        CatListRow(catData: Cats(image: "hijiki", name: "ひじき", birth: "2019年4月20日") )
    }
}
