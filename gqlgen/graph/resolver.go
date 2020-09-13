package graph

// go:generate go run github.com/99designs/gqlgen
import "github.com/takuya911/gqlgen/graph/model"

// Resolver struct
type Resolver struct {
	users []*model.User
}
