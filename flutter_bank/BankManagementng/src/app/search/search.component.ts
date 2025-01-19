import { Component, OnInit } from '@angular/core';
import { UserRegistrationService } from '../services/user-registration.service';
import { Router } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { AdminHeaderComponent } from "../admin-header/admin-header.component";
import { AdminSidebarComponent } from "../admin-sidebar/admin-sidebar.component";

@Component({
  selector: 'app-search',
  standalone: true,
  imports: [FormsModule, AdminHeaderComponent, AdminSidebarComponent],
  templateUrl: './search.component.html',
  styleUrl: './search.component.css'
})
export class SearchComponent implements OnInit{
  constructor(private myservice: UserRegistrationService, private router:Router) { }

  a_number: any;

  getData: any;

  ngOnInit(): void {
  }

  search() {
    this.myservice.search(this.a_number).subscribe((x) => {
      this.getData = x
      this.router.navigateByUrl("useraccountinfo", { state: { response: this.getData } });
    });
  }

}
