import { Component } from '@angular/core';
import { UsersidebarComponent } from "../usersidebar/usersidebar.component";
import { UserheaderComponent } from "../userheader/userheader.component";
import { Router } from '@angular/router';

@Component({
  selector: 'app-showcustomerbalance',
  standalone: true,
  imports: [UsersidebarComponent, UserheaderComponent],
  templateUrl: './showcustomerbalance.component.html',
  styleUrl: './showcustomerbalance.component.css'
})
export class ShowcustomerbalanceComponent {
  data:any;
  constructor(private router: Router) { 
    this.data = this.router.getCurrentNavigation()?.extras.state?.["response"];
  }


}
