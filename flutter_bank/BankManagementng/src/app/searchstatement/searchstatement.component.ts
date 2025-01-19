import { Component, OnInit } from '@angular/core';
import { AdminHeaderComponent } from "../admin-header/admin-header.component";
import { AdminSidebarComponent } from "../admin-sidebar/admin-sidebar.component";
import { FormsModule } from '@angular/forms';
import { AdminLoginService } from '../services/admin-login.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-searchstatement',
  standalone: true,
  imports: [AdminHeaderComponent, AdminSidebarComponent,FormsModule],
  templateUrl: './searchstatement.component.html',
  styleUrl: './searchstatement.component.css'
})
export class SearchstatementComponent implements OnInit{
  accnumber:any;
  constructor(private myservice: AdminLoginService, private router: Router) { }

  ngOnInit(): void {
  }

  getData:any;
  searchloanstatement() {
    this.myservice.searchloanstatement(this.accnumber).subscribe((x) => {
      this.getData = x
      this.router.navigateByUrl("loanstatement", { state: { response: this.getData } });
    });
  }

}
