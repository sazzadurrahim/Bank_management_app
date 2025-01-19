import { Component, OnInit } from '@angular/core';
import { AdminHeaderComponent } from "../admin-header/admin-header.component";
import { AdminSidebarComponent } from "../admin-sidebar/admin-sidebar.component";
import { CommonModule } from '@angular/common';
import { Router } from '@angular/router';

@Component({
  selector: 'app-showbankstatement',
  standalone: true,
  imports: [AdminHeaderComponent, AdminSidebarComponent, CommonModule],
  templateUrl: './showbankstatement.component.html',
  styleUrl: './showbankstatement.component.css'
})
export class ShowbankstatementComponent implements OnInit{
  allData:any;
  constructor( private router: Router) { 
    this.allData=this.router.getCurrentNavigation()?.extras.state?.["response"];
  }

  ngOnInit(): void {
  }

}
