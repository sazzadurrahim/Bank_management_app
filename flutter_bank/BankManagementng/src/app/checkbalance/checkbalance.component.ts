import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { UserRegistrationService } from '../services/user-registration.service';
import { Router } from '@angular/router';
import { UsersidebarComponent } from "../usersidebar/usersidebar.component";
import { UserheaderComponent } from "../userheader/userheader.component";

@Component({
  selector: 'app-checkbalance',
  standalone: true,
  imports: [FormsModule, UsersidebarComponent, UserheaderComponent],
  templateUrl: './checkbalance.component.html',
  styleUrl: './checkbalance.component.css'
})
export class CheckbalanceComponent implements OnInit{
  constructor(private myservice: UserRegistrationService, private router: Router) { }

  a_number: any;
  password: any;

  getData: any;

  ngOnInit(): void {
  }

  search() {
    this.myservice.searchBYUser(this.a_number, this.password).subscribe((x) => {
      this.getData = x;
      this.router.navigateByUrl("showcustomerbalance", { state: { response: this.getData } });
    });
  }



}
