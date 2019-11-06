//
//  ContentView.swift
//  SwiftUIScrollView
//
//  Created by Josue Gisber on 11/4/19.
//  Copyright © 2019 Mpixel Design & Development. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		VStack {
			ScrollView(showsIndicators: false) {
				HStack {
					VStack(alignment: .leading) {
						Text("Monday Aug 20".uppercased())
							.font(.headline)
							.foregroundColor(.secondary)
						Text("Your Reading")
							.font(.system(.title, design: .rounded))
							.fontWeight(.black)
							.foregroundColor(.primary)
					}
					.layoutPriority(100.0)
					Spacer()
				}
				.padding([.top, .horizontal])
				.layoutPriority(-100)
				
				VStack {
					CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
				
					CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Babriel Theodoropoulos")
						
					CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrance Tan")
						
					CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")
						
				}
			}
			Spacer()
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
