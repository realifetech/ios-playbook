# iOS Developer Technical Task
Please read and complete the below instructions. You have 45 minutes to plan and implement as much of the following as possible.

We recommend spending a couple minutes reading this task, ~10 minutes planning your approach, and ~30mins implementing

You will be provided a link to a freehand document which will allow you space to plan your approach.

Write a iPhone app in Swift that presents one view controller containing a table view that shows a list of events.
The cells of the list should display information about an event as follows:

![Event Cells](event-cells.jpeg "Event Cells")

Events should be fetched using [this endpoint](https://us-central1-techtaskapi.cloudfunctions.net/events).  

*Note, this endpoint is paginated, and returns only 10 results at a time. To display the full list, you will either need to implement pagination by fetching the desired page using the **page** query parameter, or increase the limit on the response length using the limit query parameter. We'll leave it up to you to decide which of these we'd prefer* 😉.

We would like to see a completed test containing the following:
- A compiling project
- Good project organisation
- Good choice of design pattern (we don't mind which but think about how the test could be extended in the future)
- Adherence to SOLID principles
