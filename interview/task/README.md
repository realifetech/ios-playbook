# iOS Developer Technical Task
Please read and complete the below instructions. We estimate that the task should take around 4 hours, but feel free to take as long as you like. We'd prefer that you submitted something that you were happy with over you feeling rushed.

We would like you complete this task using the tools, libraries, and patterns that you are most comfortable with, and that you would use for a project of your own.

Write a iPhone app in Swift that presents one view controller containing a table view that shows a list of events.
The cells of the list should display information about an event as follows:

![Event Cells](event-cells.jpeg "Event Cells")

Events should be fetched using the mock endpoint available at:
[https://my-json-server.typicode.com/livestyled/mock-api/events](https://my-json-server.typicode.com/livestyled/mock-api/events).  
*Note, this endpoint is paginated, and returns only 10 results at a time. To display the full list, you will either need to implement pagination by fetching the desired page using the \_page query parameter, or increase the limit on the response length using the limit query parameter. We'll leave it up to you to decide which of these we'd prefer* 😉.

We would like you to allow the user to favourite/unfavourite events by tapping a button on the cell which indicates the current state. These actions should be persisted locally on the device.

When complete, please send us a link to a public git repository containing the project.
We are a busy group of people, so we'd appreciate it if you can make it as easy as possible for us to review your work. As such, a readme would be greatly appreciated, especially if there are unobvious steps to compile the project.
