import { Component } from '@angular/core';
import { AdminHeaderComponent } from "../admin-header/admin-header.component";
import { AdminSidebarComponent } from "../admin-sidebar/admin-sidebar.component";
import { CommonModule } from '@angular/common';
import { AdminLoginService } from '../services/admin-login.service';

@Component({
  selector: 'app-showloantransaction',
  standalone: true,
  imports: [AdminHeaderComponent, AdminSidebarComponent, CommonModule],
  templateUrl: './showloantransaction.component.html',
  styleUrl: './showloantransaction.component.css'
})
export class ShowloantransactionComponent {
  getAllData: any;
  constructor(private myservice: AdminLoginService) {
    this.myservice.showallloantransaction().subscribe((x) => { this.getAllData = x });
  }


}
