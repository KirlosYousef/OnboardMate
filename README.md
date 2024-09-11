# OnboardMate

Your simple and lightweight SwiftUI library mate for creating beautiful onboarding screens with smooth animations and full customization options.

A real example from [RaceMe!](https://apps.apple.com/us/app/id1514432749) App:

![Onboarding animation](https://i.imgur.com/HZHfLv4.gif)
![Onboarding animation](https://i.imgur.com/XowgD2p.gif)

## Features
- Smooth animations
- Full customization for each screen
- Optional background and object images
- Customizable action buttons with flexible actions

## Usage

1. **Import the `OnboardMate` library:**
   ```swift
   import OnboardMate
   ```

2. **Create a list of `OnboardingScreen`:**
   Each `OnboardingScreen` represents the data for one screen.

   Properties:
   - `id`: Unique tab ID.
   - `backgroundImage`: Optional background image to show at the top.
   - `objectImage`: Optional object image to appear with smooth animation.
   - `primaryText`: Main title for the screen.
   - `descriptionText`: Secondary text for additional descriptions.
   - `calloutText`: Optional callout text for highlights.
   - `buttonTitle`: Action button title, default is "Get Started!".
   - `buttonColor`: Button color, default is system’s background color.
   - `didTapAction`: Action triggered when the button is tapped. Set to `nil` to hide the button.

   Example:
   ```swift
   let screen1 = OnboardingScreen(
       id: 0,
       backgroundImage: Image("screen_1"),
       objectImage: Image("object_1"),
       primaryText: "Screen 1 title",
       descriptionText: "Screen 1 description"
   )

   let screen2 = OnboardingScreen(
       id: 1,
       backgroundImage: Image("screen_2"),
       objectImage: Image("object_2"),
       primaryText: "Screen 2 title",
       descriptionText: "Screen 2 description",
       calloutText: "Screen 2 callout",
       buttonTitle: "Get Started!",
       buttonColor: .white
   ) {
       print("Onboarding done!")
   }

   let screensList = [screen1, screen2]
   ```

3. **Display the onboarding screens:**
   Call the `OnboardMateView` and pass your screens list.
   
   - `screensList`: The list of `OnboardingScreen` objects.
   - `nextButtonColor`: Optional. If set, a "Next" button will appear on screens without action buttons.

   Example:
   ```swift
   OnboardMateView(screensList: screensList, nextButtonColor: .white)
   ```

## Installation

### Swift Package Manager

Add this to your package dependencies in `Package.swift`:
```swift
dependencies: [
    .package(url: "https://github.com/KirlosYousef/OnboardMate")
]
```

## Requirements
- iOS 16+
- Xcode 14+

## Support

Feel free to reach out to me at:
- [Portfolio](https://kirlosyousef.com)
- [LinkedIn](https://www.linkedin.com/in/kirlosyousef)

## License

OnboardMate is available under the MIT License. See the [LICENSE.md](LICENSE.md) file for more info.

---

© 2024 Kirlos Yousef.
