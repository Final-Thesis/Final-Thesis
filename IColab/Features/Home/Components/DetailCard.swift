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
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            switch detailCardType {
            case .description:
                Text("\(title ?? "Title")")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("\(caption ?? "Caption")")
            case .cardwithlogo:
                HStack{
                    Image(systemName: "\(symbol ?? "folder")")
                        .font(.system(size: 25))
                    VStack(alignment: .leading, spacing: 5){
                        Text("\(title ?? "Title")")
                            .font(.callout)
                            .fontWeight(.bold)
                        Text("\(caption ?? "Caption")")
                    }
                }
            }
        }
        .frame(width: detailCardType == .cardwithlogo ? 140 : nil)
        .padding(.horizontal, detailCardType == .cardwithlogo ? 15 : 30)
        .padding(.vertical, detailCardType == .cardwithlogo ? 8 : 20)
        .background(.ultraThinMaterial)
        .cornerRadius(12)
    }
}

struct DetailCard_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            DetailCard(detailCardType: .cardwithlogo, symbol: "clock", title: "Start Date", caption: "01-01-2002")
            DetailCard(detailCardType: .description, title: "Job Description", caption: "Lorem ipsum dolor sit amet consectetur. Lobortis sit aliquam est lorem leo. Sollicitudin risus ornare sapien lectus lectus dictum quisque congue. Sed vitae sed ultricies tortor. Vel maecenas etiam nulla lorem.")
        }
    }
}

enum DetailCardType {
    case description
    case cardwithlogo
}
