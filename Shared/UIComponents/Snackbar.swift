//
//  Snackbar.swift
//  BasicUI-SwiftUI (iOS)
//
//  Created by Mohammed Ismayil on 19/07/22.
//

import Foundation
import SwiftUI
struct Snackbar: View {
    var body: some View {
        HStack() {
            Image(systemName: "person.fill")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .frame(width: 40, height: 40)

            VStack(alignment: .leading, spacing: 4) {
                Text("Archi")
                    .foregroundColor(.black)
                    .font(.headline)

                Text("Gotcha, let's meet at 9am")
                    .font(.body)
                    .foregroundColor(.black)
            }
        }
        .padding(15)
        .frame(maxWidth: .infinity, idealHeight: 100)
        .background(Color.black.opacity(0.1))
    }
}
