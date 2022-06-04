package main

import pb "github.com/maxwellgithinji/shippy/shippy-service-user/proto/user"

type CustomClaims struct {
	User *pb.User
}

type TokenService struct {
	repo Repository
}

// Decode a token string into a token object
func (srv *TokenService) Decode(token string) (*CustomClaims, error) {
	return nil, nil
}

// Encode a claim into a JWT
func (srv *TokenService) Encode(user *pb.User) (string, error) {
	return "", nil
}
