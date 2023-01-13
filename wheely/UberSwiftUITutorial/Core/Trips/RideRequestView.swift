//
//  RideRequestView.swift
//  UberSwiftUITutorial
//
//  Created by Ruba Abuhatlah on 18/06/1444 AH.
//

import SwiftUI

struct RideRequestView: View {
    @State private var selectedRideType: RideType = .SpecialAssistance
    @EnvironmentObject var locationViewModel: LocationSearchViewModel
    var body: some View {
        VStack {
            Capsule()
                .foregroundColor(Color(.systemGray5))
                .frame(width: 48,height: 6)
                .padding(.top, 8)
            
            //trip info view
            HStack{
                // indicator view
                VStack{
                    Circle()
                        .fill(Color(.systemGray3))
                        .frame(width: 8,height: 8)
                    Rectangle()
                        .fill(Color(.systemGray3))
                        .frame(width: 1,height: 32)
                    Rectangle()
                        .fill(.black)
                        .frame(width: 8,height: 8)
                }
                
                VStack(alignment: .leading, spacing: 24){
                    HStack{
                        Text("Current location")
                            .font(.system(size: 16,weight: .semibold))
                            .foregroundColor(.gray)
                        Spacer()
                        Text("1:30 PM")
                            .font(.system(size:14,weight:.semibold))
                            .foregroundColor(.gray)
                    }.padding(.bottom,10)
                    
                    HStack{
                        Text("Apple Academy")
                            .font(.system(size: 16,weight: .semibold))
                            .foregroundColor(Color("Color"))

                        Spacer()
                        Text("1:45 PM")
                            .font(.system(size:14,weight:.semibold))
                            .foregroundColor(.gray)
                    }
                }
                .padding(.leading,8)
            }
            .padding()
            
            Divider()
            
            //ride type selection view
            Text("SUGGESTED RIDES")
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding()
                .foregroundColor(.gray)
                .frame(maxWidth:.infinity,alignment: .leading)
            
            ScrollView(.horizontal){
                HStack(spacing:12){
                    ForEach(RideType.allCases) { type in
                        VStack(alignment:.leading){
                            
                            Image(systemName: "car.fill")
                                .resizable()
                                .frame(width:40,height: 30)
                                .scaledToFit()
                                .padding(.leading,12)
                                .accessibilityHidden(true)
                            
                            VStack(spacing:4){
                                
                                Text(type.description)
                                    .font(.system(size:14,weight:.semibold))
                                
                                Text("$30.00")
                                .font(.system(size:14,weight:.semibold))
                                
                            }
                            .padding(8)
                            
                        }
                        .frame(width: 112,height: 140)
                        .foregroundColor(type == selectedRideType ? .white : .black)
                        .background(Color(type == selectedRideType ? .systemBrown : .systemGroupedBackground))
                        .scaleEffect(type == selectedRideType ? 1.25 : 1.0)
                        .cornerRadius(10)
                        .onTapGesture {
                            withAnimation(.spring()) {
                                selectedRideType = type
                            }
                        }
                    }
                    
                }
            }
            .padding(.horizontal)
            
            Divider()
                .padding(.vertical,8)
            //payment option view
            
            HStack(spacing:12){
                Text("Visa")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(6)
                    .background(.blue)
                    .cornerRadius(4)
                    .foregroundColor(.white)
                    .padding(.leading)
                
                Text("*** 123")
                    .fontWeight(.bold)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .imageScale(.medium)
                    .padding()
            }
            .frame(height:50)
            .background(Color(.systemGroupedBackground))
            .cornerRadius(10)
            .padding(.horizontal)
            //request ride buttom
            
            Button{
                
            }label: {
                
                Text("CONFIRM")
                    .fontWeight(.bold)
                    .frame(width: UIScreen.main.bounds.width - 32,height: 50)
                    .background(Color("Color"))
                    .cornerRadius(10)
                    .foregroundColor(.white)
           
            }
        }
        .padding(.bottom, 16)
        .background(.white)
        .cornerRadius(12)
    }
}
struct RideRequestView_Previews: PreviewProvider {
    static var previews: some View {
        RideRequestView()
    }
}
