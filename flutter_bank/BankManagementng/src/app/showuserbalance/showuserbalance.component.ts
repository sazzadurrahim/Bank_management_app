import { Component } from '@angular/core';
import { UserheaderComponent } from "../userheader/userheader.component";
import { UsersidebarComponent } from "../usersidebar/usersidebar.component";
import { Router } from '@angular/router';

@Component({
  selector: 'app-showuserbalance',
  standalone: true,
  imports: [UserheaderComponent, UsersidebarComponent],
  templateUrl: './showuserbalance.component.html',
  styleUrl: './showuserbalance.component.css'
})
export class ShowuserbalanceComponent {
  getData:any;
  
  constructor(private router:Router) {
    this.getData = this.router.getCurrentNavigation()?.extras.state?.["response"];
   }

}
