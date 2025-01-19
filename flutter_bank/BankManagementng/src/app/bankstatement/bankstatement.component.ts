import { Component, OnInit } from '@angular/core';
import { AdminHeaderComponent } from "../admin-header/admin-header.component";
import { AdminSidebarComponent } from "../admin-sidebar/admin-sidebar.component";
import { FormsModule } from '@angular/forms';
import { AdminLoginService } from '../services/admin-login.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-bankstatement',
  standalone: true,
  imports: [AdminHeaderComponent, AdminSidebarComponent,FormsModule],
  templateUrl: './bankstatement.component.html',
  styleUrl: './bankstatement.component.css'
})
export class BankstatementComponent implements OnInit{
  a_number:any;
  predate:any;
  curdate:any;

 
  constructor(private myservice : AdminLoginService, private router: Router) { }

  ngOnInit(): void {
  }

  allData:any;
  searchtransaction(){
    this.myservice.searchstatement(this.a_number, this.predate, this.curdate).subscribe((x) => { 
      this.allData=x;
      this.router.navigateByUrl("showbankstatement", { state: { response: this.allData } });
    });
  }


}
