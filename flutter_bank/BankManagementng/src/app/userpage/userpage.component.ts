import { Component } from '@angular/core';
import { UserheaderComponent } from "../userheader/userheader.component";
import { UsersidebarComponent } from "../usersidebar/usersidebar.component";

@Component({
  selector: 'app-userpage',
  standalone: true,
  imports: [UserheaderComponent, UsersidebarComponent],
  templateUrl: './userpage.component.html',
  styleUrl: './userpage.component.css'
})
export class UserpageComponent {

}
