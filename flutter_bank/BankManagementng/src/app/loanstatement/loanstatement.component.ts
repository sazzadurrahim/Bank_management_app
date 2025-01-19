import { Component } from '@angular/core';
import { AdminHeaderComponent } from "../admin-header/admin-header.component";
import { AdminSidebarComponent } from "../admin-sidebar/admin-sidebar.component";
import { CommonModule } from '@angular/common';
import { Router } from '@angular/router';

@Component({
  selector: 'app-loanstatement',
  standalone: true,
  imports: [AdminHeaderComponent, AdminSidebarComponent, CommonModule],
  templateUrl: './loanstatement.component.html',
  styleUrl: './loanstatement.component.css'
})
export class LoanstatementComponent {
  getData:any;
  constructor(private router:Router) { 
    this.getData = this.router.getCurrentNavigation()?.extras.state?.["response"];
  }


}
