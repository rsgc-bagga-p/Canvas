/*:
 
 # Canvas
 
 The Canvas class provides methods that allow basic shapes to be drawn on a Cartesian plane.
 
 - callout(Experiment):
 
    Uncomment line 27 so that the axes of the plane are automatically drawn.
 
    Where is the origin?
 
    In what direction do values on the *x* and *y* axes increase?
 
 */
// These are some required statements to make this playground work.
import Cocoa
import PlaygroundSupport

// Create a new canvas

let canvas = Canvas(width: 500, height: 500)

var word: String = "F-F++F-F++F-F++F-F++F-F++F-F"

var word2: String = ""

var axiom: String = "F++F++F"

var rule: String = "F-F++F-F"

var angle: Int = 60

var distance: Int = 0

let currentLenght: Int = 300

let reduction: Int = 3

let n: Int = 2

// View the current state of the canvas
canvas

// Draw the axes
canvas.drawAxes()

// Add code below...

func createWord(iteration: Int) -> String {
    
    for _ in 1...iteration {
        
        for j in axiom.characters {
            
            if j == "F" {
                word2.append(rule)
            }
                
            else {
                word2.append(j)
            }
            
        }
        
    }
    
    return word2
}

createWord(iteration: n)

distance = Int(Double(currentLenght) / pow(Double(reduction), Double(n)))

// Add code below...
for i in word2.characters {
    
    if i == "F" {
        canvas.drawLine(fromX: 0, fromY: 0, toX: distance, toY: 0)
        canvas.translate(byX: distance, byY: 0)
        // Draw the axes
        //canvas.drawAxes()
    }
    else if i == "-" {
        canvas.rotate(by: Degrees(360-angle))
        // Draw the axes
        //canvas.drawAxes()
    }
    else if i == "+" {
        canvas.rotate(by: Degrees(angle))
        // Draw the axes
        //canvas.drawAxes()
    }
    
}


/*:
 
 ## To see output
 
 To see output, ensure that you have enabled the Assistant Editor...
 
 ![assistant-editor](assistant-editor.png "Enable the Assistant Editor")
 
 ... and verify that you have selected the *Timeline* option:
 
 ![timeline-option](timeline-option.png "Show the timeline")
 
 Finally, do not remove the following line of code:

 */
PlaygroundPage.current.liveView = canvas.imageView
