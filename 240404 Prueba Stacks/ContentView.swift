//
//  ContentView.swift
//  240404 Prueba Stacks
//
//  Created by Luis on 4/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //.leading hace que todos los elementos se alineen a la izquierda en vez de central
        //spacing separa los elementos que se contienen
        VStack{
            CabeceraView()
            HStack {
                LuchadorView(luchador: "Goku", fuerza: "800/1000", trans: "Ultra Instinto", colorTexto: .black, colorFondo: .purple, imagenLuchador: "goku_ultrainstinto")
                ZStack {
                    
                    LuchadorView(luchador: "Vegeta", fuerza: "795/1000", trans: "Mega Instinto", colorTexto: .blue, colorFondo: Color(red: 240/255, green: 240/255, blue: 240/255), imagenLuchador: "vegeta_megainstinto")
                    Text("Luchador seleccionado")
                        .font(.system(.title, design: .rounded))
                        .foregroundColor(.red)
                        .bold()
                        .rotationEffect(.degrees(315))
                    //offset permite desplazar el elemento
                        .offset(x: 0, y: 50)
                }
            }
            .padding(.horizontal, 7.0)
            VStack {
                Text(Image(systemName: "star"))
                    .foregroundColor(.red)
                    .bold()
                    .offset(x: 0, y: 50)
                ZStack {
                    LuchadorView(luchador: "Vegeto", fuerza: "9000/1000", trans: "Blue", colorTexto: .black, colorFondo: .blue, imagenLuchador: "vegeto_blue")
                    Text("Goku y Vegeta fusionados")
                        .font(.system(.title, design: .rounded))
                        .foregroundColor(.white)
                        .offset(x:0, y: -30)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CabeceraView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text("Elige")
                .font(.system(.largeTitle, design: .rounded))
                .foregroundColor(.purple)
                .fontWeight(.black)
            Text("tu luchador")
                .font(.system(.largeTitle, design: .rounded))
                .foregroundColor(.purple)
                .fontWeight(.black)
        }
    }
}


struct LuchadorView: View {
    var luchador:String
    var fuerza:String
    var trans:String
    var colorTexto: Color
    var colorFondo: Color
    var imagenLuchador: String
    var body: some View {
        VStack {
            Text(luchador)
                .font(.system(.title,design: .rounded))
                .fontWeight(.black)
                .foregroundColor(colorTexto)
            Text(fuerza)
                .font(.system(size:15, weight: .heavy, design: .rounded))
                .foregroundColor(colorTexto)
            Text(trans)
                .font(.headline)
                .foregroundColor(.gray)
            Image(imagenLuchador)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 150)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 300)
        .background(colorFondo.opacity(0.6))
        .cornerRadius(10)
        .border(.black)

    }
}
