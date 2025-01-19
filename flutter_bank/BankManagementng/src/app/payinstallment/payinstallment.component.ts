import { Component, OnInit } from '@angular/core';
import { AdminHeaderComponent } from "../admin-header/admin-header.component";
import { AdminSidebarComponent } from "../admin-sidebar/admin-sidebar.component";
import { FormsModule } from '@angular/forms';
import { AdminLoginService } from '../services/admin-login.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-payinstallment',
  standalone: true,
  imports: [AdminHeaderComponent, AdminSidebarComponent, FormsModule],
  templateUrl: './payinstallment.component.html',
  styleUrl: './payinstallment.component.css'
})
export class PayinstallmentComponent implements OnInit{
  accnumber: any;
  amount: any;
  constructor(private myservice: AdminLoginService, private router: Router) { }

  ngOnInit(): void {
  }

  getData: any;
  payment() {
    this.myservice.payinstallment(this.accnumber, this.amount).subscribe((x) => {
      this.getData = x;

      if (this.getData.msg != null) {

        alert(this.getData.msg);

      } else {

        alert("Installment paid successful");
        this.router.navigateByUrl("showloanaccounts");

      }

    });
  }


}
