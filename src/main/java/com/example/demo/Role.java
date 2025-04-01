package com.example.demo;

public class Role {
    private String roleId;
    private String roleName;

    public Role(String roleId, String roleName) {
        this.roleId = roleId;
        this.roleName = roleName;
    }

    public String getRoleId() { return roleId; }
    public String getRoleName() { return roleName; }

    public void setRoleId(String roleId) { this.roleId = roleId; }
    public void setRoleName(String roleName) { this.roleName = roleName; }
}
