import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { AdminLoginService } from '../services/admin-login.service';
import { Router } from '@angular/router';
import { AdminHeaderComponent } from "../admin-header/admin-header.component";
import { AdminSidebarComponent } from "../admin-sidebar/admin-sidebar.component";

@Component({
  selector: 'app-deposit',
  standalone: true,
  imports: [FormsModule, AdminHeaderComponent, AdminSidebarComponent],
  templateUrl: './deposit.component.html',
  styleUrl: './deposit.component.css'
})
export class DepositComponent implements OnInit{
  constructor(private myservice: AdminLoginService, private router: Router) { }

  ngOnInit(): void {
  }
  a_number: any;
  deposit: any;

  data:any;
  addBalance() {
    this.myservice.createdeposit(this.a_number, this.deposit).subscribe((x) => {
      this.data=x;
      alert("Deposit Successful");
      this.router.navigateByUrl("adminPage");
     });
    
  }


}
