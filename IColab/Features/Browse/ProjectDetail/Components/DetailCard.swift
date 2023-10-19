//
//  DetailCard.swift
//  IColab
//
//  Created by Kevin Dallian on 03/09/23.
//

import SwiftUI

struct DetailCard: View {
    var detailCardType : DetailCardType
    var symbol : String?
    var title : String?
    var caption : String?
    var requirements : [String]?
    @State private var showFullDesc = false
    @State private var descMoreThan3Lines = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            switch detailCardType {
            case .description:
                Text("\(title ?? "Title")")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("\(caption ?? "Caption")")
                    .lineLimit(showFullDesc ? nil : 3)
                    .font(.body)
                    .background(
                        GeometryReader { geometry in
                            Color.clear.onAppear {
                                let lineHeight = UIFont.preferredFont(forTextStyle: .body).lineHeight
                                let threeLinesHeight = lineHeight * 3
                                descMoreThan3Lines = geometry.size.height > threeLinesHeight
                            }
                        }
                    )
                if descMoreThan3Lines{
                    HStack{
                        Spacer()
                        Button(action: {
                            withAnimation {
                                showFullDesc.toggle()
                            }
                        }, label: {
                            HStack(spacing: 1){
                                Text(showFullDesc ? "Read Less" : "Read More")
                                Image(systemName: showFullDesc ? "chevron.up" : "chevron.down")
                            }
                        })
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        Spacer()
                    }
                }
            case .cardwithlogo:
                HStack{
                    Image(systemName: "\(symbol ?? "folder")")
                        .font(.system(size: 24))
                        .frame(width: 30)
                    VStack(alignment: .leading, spacing: 5){
                        Text("\(title ?? "Title")")
                            .font(.callout)
                            .fontWeight(.bold)
                        Text("\(caption ?? "Caption")")
                    }
                    Spacer()
                }
            case .requirements:
                HStack{
                    VStack(alignment: .leading, spacing: 4){
                        Text("\(title ?? "Title")")
                            .font(.title2)
                            .fontWeight(.bold)
                        ForEach(requirements ?? ["requirement"], id: \.self){ requirement in
                            Text("\u{2022} \(requirement)")
                        }
                    }
                    Spacer()
                }
                
            }
        }
        .frame(width: detailCardType == .cardwithlogo ? 150 : nil)
        .padding(.horizontal, detailCardType == .cardwithlogo ? 15 : 20)
        .padding(.vertical, detailCardType == .cardwithlogo ? 8 : 20)
        .background(.ultraThinMaterial)
        .cornerRadius(12)
    }
}

struct DetailCard_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            DetailCard(detailCardType: .cardwithlogo, symbol: "clock", title: "Logo Card", caption: "01-01-2002")
            DetailCard(detailCardType: .description, title: "Description Card", caption: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien lectus lectus dictum quisque congue. Sed vitae sed ultricies tortor. Vel maecenas etiam nulla lorem.")
            DetailCard(detailCardType: .requirements, title: "Requirements Card", requirements: ["3 years Experience of UIKit", "3 years Experience of SwiftUI"])
        }
    }
}

enum DetailCardType {
    case description
    case cardwithlogo
    case requirements
}
