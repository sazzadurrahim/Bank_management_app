import { Component } from '@angular/core';
import { AdminHeaderComponent } from "../admin-header/admin-header.component";
import { AdminSidebarComponent } from "../admin-sidebar/admin-sidebar.component";
import { CommonModule } from '@angular/common';
import { AdminLoginService } from '../services/admin-login.service';

@Component({
  selector: 'app-showtransaction',
  standalone: true,
  imports: [AdminHeaderComponent, AdminSidebarComponent,CommonModule],
  templateUrl: './showtransaction.component.html',
  styleUrl: './showtransaction.component.css'
})
export class ShowtransactionComponent {
  getAllData: any;

  constructor(private myservice: AdminLoginService) {

    this.myservice.getalltransaction().subscribe((x) => { this.getAllData = x });
  }


}
