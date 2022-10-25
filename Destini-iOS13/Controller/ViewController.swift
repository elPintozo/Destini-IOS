import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain: StoryBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //assign tag to the buttons
        choice1Button.tag = 1
        choice2Button.tag = 2
        
        //set label and buttons text
        storyLabel.text = storyBrain.getStory(option: -1)
        choice1Button.setTitle(storyBrain.getTextChoiceOne(), for: UIButton.State.normal)
        choice2Button.setTitle(storyBrain.getTextChoiceTwo(), for: UIButton.State.normal)
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        //set label and buttons text when user selected one choice
        storyLabel.text = storyBrain.getStory(option: Int(sender.tag))
        choice1Button.setTitle(storyBrain.getTextChoiceOne(), for: UIButton.State.normal)
        choice2Button.setTitle(storyBrain.getTextChoiceTwo(), for: UIButton.State.normal)
    }
    
}

