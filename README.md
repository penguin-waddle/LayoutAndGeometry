# Layout and Geometry

## Overview
Layout and Geometry is a SwiftUI project focused on exploring advanced layout alignments and creating special effects using `GeometryReader`. The project is part of the "100 Days of SwiftUI" course, emphasizing learning through hands-on practice.

## Features
- **Dynamic Color and Opacity**: Each row in the scroll view dynamically changes color and opacity based on its vertical position on the screen.
- **3D Rotation Effect**: Implements a 3D rotation effect on each row, which changes as the user scrolls.
- **Geometry-Based Scaling**: Utilizes `GeometryReader` to scale elements based on their position in the global view.

## Implementation
- **GeometryReader**: Used to read the size and position of each row in the global coordinate space.
- **Dynamic Hue Calculation**: Calculates the hue for each row based on its vertical position to create a rainbow effect.
- **ScrollView**: A vertical scroll view containing a list of text views, each corresponding to a row.

## Code Structure
- `ContentView`: The main view of the app, containing the scroll view and rows.
- `hueForElement(at:)`: A function that calculates the hue for each row based on its vertical offset.

## Challenges and Learnings
- Understanding how `GeometryReader` provides the size and position of views.
- Leveraging geometry data to create dynamic UI effects based on the scroll position.
- Learning to use SwiftUI's 3D effects and color manipulation to enhance the user interface.

## Future Enhancements
- Experimentation with different geometric shapes and alignments.
- Adding interactive elements that respond to the user's scroll position.
- Further exploration of SwiftUI's animation and transition capabilities.

---

*This project is a practical exercise from the "100 Days of SwiftUI" course, demonstrating the application of SwiftUI's `GeometryReader` and advanced layout techniques.*

---
