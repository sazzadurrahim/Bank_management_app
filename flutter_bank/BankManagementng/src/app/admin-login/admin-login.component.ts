import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { AdminLoginService } from '../services/admin-login.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-admin-login',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './admin-login.component.html',
  styleUrl: './admin-login.component.css'
})
export class AdminLoginComponent {
  constructor(private myservice: AdminLoginService, private router: Router) { }

  id: any;
  password: any;

  loginAdmin: any;

  ngOnInit(): void {
  }

  doLogin() {
    this.myservice.login(this.id, this.password).subscribe((x) => {
      this.loginAdmin = x;

      if ((this.loginAdmin != null)) {
        this.router.navigate(["adminPage"]);
        alert("Login Successful");
      } else {
        this.router.navigate(["error"]);
      }
    });

  }

}
