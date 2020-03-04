import Foundation

/*:
# Authoring Structures
 
 Refer to this [list of formulas for various geometric figures](https://www.eqao.com/en/assessments/grade-9-math/assessment-docs/g9-formula-sheet-academic.pdf) (from the Grade 9 EQAO Mathematics assessment).
 
 Select two 2D shapes, and author a structure that:
 
 * describes the shape
 * reports on the area
 * reports on the perimeter

 Select two 3D shapes, and author a structure that:

 * describes the shape
 * reports on the surface area
 * reports on the volue

 Finally:

 * at least three of your formulas must involve a power
 * at least two of your formulas must involve a fraction
 * at least three of your formulas must use 𝝿
 
 Be sure to:

 * make good choices for structure names and property names
 * test your structures by creating instances, and trying the properties out to be sure they provide correct results
 
 Remember to *commit* and *push* your work regularly – at a minimum after defining each structure.
 
 */
// Begin your work here...

// Define a triangle
struct triangle {
    
    // MARK: Properties
    var base: Double
    var height: Double

    
    // Computed property to return the raw area
    var areaOfTriangle: Double {
    return (base * height) / 2
        
    }
    
    // Computed property to return a description of the area
       var triangleDescription: String {
           return "The area of the Triangle is " + String(format: "%.1f", areaOfTriangle) + " square units."
       }
}
    var oneTriangle = triangle (base: 8, height: 4)
    print(oneTriangle.areaOfTriangle)


struct sphere {

    // MARK: Properties
    var radius:Double

    // Computed property to return the raw area
    var describeSphere:String {
           return "The sphere has a radius of \(radius)"
       }

        var volumeSphere:String{
            return "The sphere has a volume of " + String(format:"%.2f",(4*Double.pi * pow(radius, 3) / 3))
       }

        var areaSphere:String{
           return "The shpere has a surface area of " + String(format:"%.2f",(4*Double.pi * pow(radius,2)))

    }
}
            var oneSphere = sphere(radius:5)
            print(oneSphere.describeSphere)
            print(oneSphere.volumeSphere)
            print(oneSphere.areaSphere)

struct rectangle{
    // MARK: Properties
    var lenght: Double
    var height: Double
    var width: Double

    // surface area
    var rectangleArea: Double {
    return "The area of the rectangle is" (Double(2) * (lenght*height + width*height + width*lenght))

    }

    // Volume
    var rectangleVolume: Double {
    return "The volume of the rectangle is " (lenght * height * width)

    }
}

    // Create Rectangle
    var oneRectangle = rectangle(lenght: 12, height: 8, width: 16)
    print(oneRectangle.rectangleArea)
    print(oneRectangle.rectangleVolume)


// Triangular prism

struct triangularPrism{
    
    // MARK: Properties
    var base1: Double
    var base2: Double
    var base3: Double
    var height: Double
    var baseHeight: Double
    
    var triangularPrismBase: String {
    return "The Triangular Prism has a base of \(base1), \(base2) and \(base3) a height on the base of \(baseHeight) and a height of \(height)"
}
    var triangularPrismVolume: String {
    return "The triangular Prims has a volume of \(base2 * height * baseHeight/2)"
    }
    
    var triangularPrismArea: String {
    return "The triangular Prims has Area of \((base1 + base2 + base3) * height + baseHeight * base2)"
            
        }
}

var oneTriangularPrism = triangularPrism(base1: 4, base2: 8, base3: 6, height: 5, baseHeight: 3)
    print(oneTriangularPrism.triangularPrismBase)
    print(oneTriangularPrism.triangularPrismVolume)
    print(oneTriangularPrism.triangularPrismArea)
    
/*:
 [Previous: Area Example - Rectangle](@previous) | Page 4
 */
