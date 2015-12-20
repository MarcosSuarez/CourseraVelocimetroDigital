//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}

class Auto
{
    var velocidad: Velocidades
    
    /*
    La variable infoVelocidad realmente no se necesita; Se implementa para dar una respuesta exacta a la solicitada en la tarea.
    La opción ideal esta comentada en el for in.
    */
    var infoVelocidad: String
    
    init() {
        velocidad = Velocidades(velocidadInicial: .Apagado)
        infoVelocidad = "Apagado"
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String)
    {
        switch velocidad
        {
        case .Apagado:
            velocidad = .VelocidadBaja
            infoVelocidad = " Velocidad baja"
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            infoVelocidad = " Velocidad media"
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            infoVelocidad = " Velocidad alta"
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            infoVelocidad = " Velocidad media"
        }
        
        return(velocidad.rawValue, infoVelocidad)
    }
}

var auto = Auto()

for i in 1...20 {
    print("\(i).    \(auto.velocidad.rawValue)    \(auto.infoVelocidad)")
    //print("\(i).    \(auto.velocidad.rawValue)    \(auto.velocidad)")
    auto.cambioDeVelocidad()
}
